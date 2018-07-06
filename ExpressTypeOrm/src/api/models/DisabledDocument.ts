import {Index,Entity, PrimaryColumn, Column, OneToOne, OneToMany, ManyToOne, ManyToMany, JoinColumn, JoinTable, RelationId} from "typeorm";
import {applicant} from "./Applicant";
import {documentType} from "./DocumentType";


@Entity("DisabledDocument",{schema:"dbo"})
export class disabledDocument {

    @Column("int",{ 
        generated:true,
        nullable:false,
        primary:true,
        name:"id"
        })
    id:number;
        

   
    @ManyToOne(type=>applicant, applicant=>applicant.disabledDocuments,{  nullable:false, })
    @JoinColumn({ name:'ApplicantId'})
    applicant:applicant | null;


   
    @ManyToOne(type=>documentType, documentType=>documentType.disabledDocuments,{  nullable:false, })
    @JoinColumn({ name:'DocumentType'})
    documentType:documentType | null;


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
        
    constructor(init?: Partial<disabledDocument>) {
		Object.assign(this, init);
	}
}
