import { supabase } from '../config/database';
import { UseCase, CreateUseCaseDTO, UpdateUseCaseDTO } from '../models/UseCase';

export class UseCaseService {
  async getAllUseCases(): Promise<UseCase[]> {
    const { data, error } = await supabase
      .from('use_cases')
      .select('*')
      .order('created_at', { ascending: false });

    if (error) {
      throw new Error(`Failed to fetch use cases: ${error.message}`);
    }

    return data as UseCase[];
  }

  async getUseCaseById(id: string): Promise<UseCase | null> {
    const { data, error } = await supabase
      .from('use_cases')
      .select('*')
      .eq('id', id)
      .maybeSingle();

    if (error) {
      throw new Error(`Failed to fetch use case: ${error.message}`);
    }

    return data as UseCase | null;
  }

  async createUseCase(useCaseData: CreateUseCaseDTO): Promise<UseCase> {
    const newUseCase = {
      ...useCaseData,
      related_use_case_ids: useCaseData.related_use_case_ids || [],
      created_at: new Date().toISOString(),
      updated_at: new Date().toISOString(),
    };

    const { data, error } = await supabase
      .from('use_cases')
      .insert([newUseCase])
      .select()
      .single();

    if (error) {
      throw new Error(`Failed to create use case: ${error.message}`);
    }

    return data as UseCase;
  }

  async updateUseCase(id: string, updates: UpdateUseCaseDTO): Promise<UseCase | null> {
    const updateData = {
      ...updates,
      updated_at: new Date().toISOString(),
    };

    const { data, error } = await supabase
      .from('use_cases')
      .update(updateData)
      .eq('id', id)
      .select()
      .maybeSingle();

    if (error) {
      throw new Error(`Failed to update use case: ${error.message}`);
    }

    return data as UseCase | null;
  }

  async deleteUseCase(id: string): Promise<boolean> {
    const { error } = await supabase
      .from('use_cases')
      .delete()
      .eq('id', id);

    if (error) {
      throw new Error(`Failed to delete use case: ${error.message}`);
    }

    return true;
  }
}

export const useCaseService = new UseCaseService();
