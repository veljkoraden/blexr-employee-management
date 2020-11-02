## Install
- Clone the repository with `git clone`
- Copy `.env.example` file to `.env` 
- Setup database and mail credentials for email sending in .env file
- Run `composer install`
- Run `composer update`
- Run `php artisan key:generate`
- Run `php artisan migrate --seed` (it has some seeded data - see below)
- If error occurs after migration, run `sudo php artisan cache:forget spatie.permission.cache && sudo php artisan cache:clear` to clear permission cache
- Launch the main URL and login with default credentials `admin@admin.com` - `123456`
- Run `sudo chmod -R 777 storage/` for permission rights to storage folder
- Run `sudo chmod -R 777 bootstrap/` for write permission rights to bootstrap folder
- This boilerplate has two roles (`administrator` and `employee`) with 3 permissions (`users_manage`,`notification_manage`,`notification_view`);

## App Usage
- Login as admin@admin.com/123456
- Add new User and assign `"employee"` role to him/her
- Log in as new user in different browser and go to the `Requests` sidebar to be able to send work-from-home requests
- Go to the `Requests` sidebar logged as `admin` and `Approve/Reject` requests 
