export * from './user.service';
import { UserService } from './user.service';
export * from './users.service';
import { UsersService } from './users.service';
export const APIS = [UserService, UsersService];
