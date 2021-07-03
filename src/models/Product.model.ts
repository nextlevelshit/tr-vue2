import { Tick } from '@/models/Tick.model';

export interface Product {
  isin: string;
  displayName: string;
}

export interface WatchedProduct extends Product {
  ticks?: Tick[];
}