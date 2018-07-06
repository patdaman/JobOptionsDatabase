import {Index,Entity, PrimaryColumn, Column, OneToOne, OneToMany, ManyToOne, ManyToMany, JoinColumn, JoinTable, RelationId} from "typeorm";
import {genderTypes} from "./GenderTypes";
import {ethnicityTypes} from "./EthnicityTypes";
import {address} from "./Address";
import {alternateNames} from "./AlternateNames";
import {application} from "./Application";
import {disabledDocument} from "./DisabledDocument";
import {education} from "./Education";
import {phone} from "./Phone";
import {previousEmployer} from "./PreviousEmployer";
import {references} from "./References";
import {serviceRecord} from "./ServiceRecord";


@Entity("Applicant",{schema:"dbo"})
export class applicant {

    @Column("int",{ 
        generated:true,
        nullable:false,
        primary:true,
        name:"id"
        })
    id:number;
        

    @Column("varchar",{ 
        nullable:false,
        length:128,
        name:"FirstName"
        })
    FirstName:string;
        

    @Column("varchar",{ 
        nullable:false,
        length:128,
        name:"LastName"
        })
    LastName:string;
        

    @Column("varchar",{ 
        nullable:true,
        length:128,
        name:"MiddleName"
        })
    MiddleName:string | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:1,
        name:"MiddleInitial"
        })
    MiddleInitial:string | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:12,
        name:"SocialSecurity"
        })
    SocialSecurity:string | null;
        

    @Column("datetime2",{ 
        nullable:true,
        name:"Birthdate"
        })
    Birthdate:Date | null;
        

   
    @ManyToOne(type=>genderTypes, genderTypes=>genderTypes.applicants,{  })
    @JoinColumn({ name:'Gender'})
    gender:genderTypes | null;


   
    @ManyToOne(type=>ethnicityTypes, ethnicityTypes=>ethnicityTypes.applicants,{  })
    @JoinColumn({ name:'Ethnicity'})
    ethnicity:ethnicityTypes | null;


    @Column("bit",{ 
        nullable:false,
        default:"((1))",
        name:"Disabled"
        })
    Disabled:boolean;
        

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
        

   
    @OneToMany(type=>address, address=>address.applicant)
    addresss:address[];
    

   
    @OneToMany(type=>alternateNames, alternateNames=>alternateNames.applicant)
    alternateNamess:alternateNames[];
    

   
    @OneToMany(type=>application, application=>application.applicant)
    applications:application[];
    

   
    @OneToMany(type=>disabledDocument, disabledDocument=>disabledDocument.applicant)
    disabledDocuments:disabledDocument[];
    

   
    @OneToMany(type=>education, education=>education.applicant)
    educations:education[];
    

   
    @OneToMany(type=>phone, phone=>phone.applicant)
    phones:phone[];
    

   
    @OneToMany(type=>previousEmployer, previousEmployer=>previousEmployer.applicant)
    previousEmployers:previousEmployer[];
    

   
    @OneToMany(type=>references, references=>references.applicant)
    referencess:references[];
    

   
    @OneToMany(type=>serviceRecord, serviceRecord=>serviceRecord.applicant)
    serviceRecords:serviceRecord[];
    
    constructor(init?: Partial<applicant>) {
		Object.assign(this, init);
	}
}
