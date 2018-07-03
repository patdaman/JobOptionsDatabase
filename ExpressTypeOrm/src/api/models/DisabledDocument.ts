import {Index,Entity, PrimaryColumn, Column, OneToOne, OneToMany, ManyToOne, ManyToMany, JoinColumn, JoinTable, RelationId} from "typeorm";
import {Applicant} from "./Applicant";
import {Application} from "./Application";
import {DocumentType} from "./DocumentType";


@Entity("DisabledDocument",{schema:"dbo"})
export class DisabledDocument {

    @Column("int",{ 
        generated:true,
        nullable:false,
        primary:true,
        name:"id"
        })
    id:number;
        

   
    @ManyToOne(type=>Applicant, Applicant=>Applicant.disabledDocuments,{  nullable:false,onDelete: 'CASCADE',onUpdate: 'CASCADE' })
    @JoinColumn({ name:'ApplicantId'})
    applicant:Applicant | null;


   
    @ManyToOne(type=>Application, Application=>Application.disabledDocuments,{  })
    @JoinColumn({ name:'ApplicationId'})
    application:Application | null;


   
    @ManyToOne(type=>DocumentType, DocumentType=>DocumentType.disabledDocuments,{ onDelete: 'SET NULL',onUpdate: 'CASCADE' })
    @JoinColumn({ name:'DocumentType'})
    documentType:DocumentType | null;


    @Column("varchar",{ 
        nullable:true,
        name:"DocumentText"
        })
    DocumentText:string | null;
        

    @Column("varbinary",{ 
        nullable:true,
        name:"Document"
        })
    Document:Buffer | null;
        

    @Column("datetime2",{ 
        nullable:false,
        default:"(getdate())",
        name:"CreateDate"
        })
    CreateDate:Date;
        

    @Column("varchar",{ 
        nullable:false,
        length:128,
        default:"(suser_sname())",
        name:"CreateUser"
        })
    CreateUser:string;
        

    @Column("datetime2",{ 
        nullable:false,
        default:"(getdate())",
        name:"ModifyDate"
        })
    ModifyDate:Date;
        

    @Column("varchar",{ 
        nullable:false,
        length:128,
        default:"(suser_sname())",
        name:"ModifyUser"
        })
    ModifyUser:string;
        
}
