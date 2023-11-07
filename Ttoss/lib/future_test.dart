import 'package:fast_app_base/screen/main/tab/home/bank_accounts_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

Future<List<BankAccount>?> getBankAccounts() async {
  return bankAccounts;
}
