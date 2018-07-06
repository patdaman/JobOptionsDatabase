import {Index,Entity, PrimaryColumn, Column, OneToOne, OneToMany, ManyToOne, ManyToMany, JoinColumn, JoinTable, RelationId} from "typeorm";
import {applicant} from "./Applicant";
import {addressTypes} from "./AddressTypes";
import {previousEmployer} from "./PreviousEmployer";


@Entity("Address",{schema:"dbo"})
export class address {

    @Column("int",{ 
        generated:true,
        nullable:false,
        primary:true,
        name:"id"
        })
    id:number;
        

   
    @ManyToOne(type=>applicant, applicant=>applicant.addresss,{  nullable:false, })
    @JoinColumn({ name:'ApplicantId'})
    applicant:applicant | null;


   
    @ManyToOne(type=>addressTypes, addressTypes=>addressTypes.addresss,{  nullable:false, })
    @JoinColumn({ name:'AddressType'})
    addressType:addressTypes | null;


    @Column("varchar",{ 
        nullable:false,
        length:256,
        name:"Address1"
        })
    Address1:string;
        

    @Column("varchar",{ 
        nullable:true,
        length:256,
        name:"Address2"
        })
    Address2:string | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:256,
        name:"Address3"
        })
    Address3:string | null;
        

    @Column("varchar",{ 
        nullable:false,
        length:128,
        name:"City"
        })
    City:string;
        

    @Column("varchar",{ 
        nullable:false,
        length:50,
        name:"State"
        })
    State:string;
        

    @Column("varchar",{ 
        nullable:true,
        length:50,
        name:"PostalCode"
        })
    PostalCode:string | null;
        

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
        

   
    @OneToMany(type=>previousEmployer, previousEmployer=>previousEmployer.address)
    previousEmployers:previousEmployer[];
    
    constructor(init?: Partial<address>) {
		Object.assign(this, init);
	}
}
