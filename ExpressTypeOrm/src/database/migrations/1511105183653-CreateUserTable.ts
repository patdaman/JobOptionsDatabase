import { MigrationInterface, QueryRunner, Table } from 'typeorm';

export class CreateUserTable1511105183653 implements MigrationInterface {

    public async up(queryRunner: QueryRunner): Promise<any> {
        var tableOptions = new tableOptions();
        tableOptions =
        // const table = new Table(
            {
                name: 'user',
                columns:
                [{
                        name: 'id',
                        type: 'varchar',
                        length: '255',
                        isPrimary: true,
                        isNullable: false,
                    }, {
                        name: 'first_name',
                        type: 'varchar',
                        length: '255',
                        isPrimary: false,
                        isNullable: false,
                    }, {
                        name: 'last_name',
                        type: 'varchar',
                        length: '255',
                        isPrimary: false,
                        isNullable: false,
                    }, {
                        name: 'email',
                        type: 'varchar',
                        length: '255',
                        isPrimary: false,
                        isNullable: false,
                    },
                ]};
        const table = new Table(tableOptions);
        await queryRunner.createTable(table);
    }

    public async down(queryRunner: QueryRunner): Promise<any> {
        await queryRunner.dropTable('user');
    }

}
