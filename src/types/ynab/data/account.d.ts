import type { YNABAccountType } from '../window/ynab-enums';
import { YNABAccountCalculation } from './account-calculation';
import type { YNABTransaction } from './transaction';

export interface YNABAccount {
  accountName: string;
  accountType: YNABAccountType;
  accountCalculation: YNABAccountCalculation;
  getTransactions(): YNABTransaction[];
}
