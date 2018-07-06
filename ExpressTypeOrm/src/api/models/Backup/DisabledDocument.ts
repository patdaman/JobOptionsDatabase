import {Entity, Column, ManyToOne, JoinColumn} from 'typeorm';
import {Applicant} from './Applicant';
import {Application} from './Application';
import {DocumentType} from './DocumentType';

@Entity('DisabledDocument', {schema: 'dbo'})
export class DisabledDocument {

    @Column('int', {
        generated: true,
        nullable: false,
        primary: true,
        name: 'id',
        })
    public id: number;

    // tslint:disable-next-line:no-shadowed-variable
    @ManyToOne(type => Applicant, Applicant => Applicant.disabledDocuments, { nullable: false, onDelete: 'CASCADE', onUpdate: 'CASCADE' })
    @JoinColumn({ name: 'ApplicantId'})
    public applicant: Applicant | null;

    // tslint:disable-next-line:no-shadowed-variable
    @ManyToOne(type => Application, Application => Application.disabledDocuments, {  })
    @JoinColumn({ name: 'ApplicationId'})
    public application: Application | null;

    // tslint:disable-next-line:no-shadowed-variable
    @ManyToOne(type => DocumentType, DocumentType => DocumentType.disabledDocuments, { onDelete: 'SET NULL', onUpdate: 'CASCADE' })
    @JoinColumn({ name: 'DocumentType'})
    public documentType: DocumentType | null;

    @Column('varchar', {
        nullable: true,
        name: 'DocumentText',
        })
    public DocumentText: string | null;

    @Column('varbinary', {
        nullable: true,
        name: 'Document',
        })
    public Document: Buffer | null;

    @Column('datetime2', {
        nullable: false,
        default: '(getdate())',
        name: 'CreateDate',
        })
    public CreateDate: Date;

    @Column('varchar', {
        nullable: false,
        length: 128,
        default: '(suser_sname())',
        name: 'CreateUser',
        })
    public CreateUser: string;

    @Column('datetime2', {
        nullable: false,
        default: '(getdate())',
        name: 'ModifyDate',
        })
    public ModifyDate: Date;

    @Column('varchar', {
        nullable: false,
        length: 128,
        default: '(suser_sname())',
        name: 'ModifyUser',
        })
    public ModifyUser: string;

}
