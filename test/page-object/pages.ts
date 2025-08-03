import { makeappointmentPage } from './makeappointment-page';
import { loginPage } from './login-page';

export const pages: { [key: string]: any } = {
    login: loginPage,
    makeappointment:makeappointmentPage,
};
