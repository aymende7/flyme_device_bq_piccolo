.class public final Landroid/view/InputDevice;
.super Ljava/lang/Object;
.source "InputDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputDevice$1;,
        Landroid/view/InputDevice$MotionRange;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEYBOARD_TYPE_ALPHABETIC:I = 0x2

.field public static final KEYBOARD_TYPE_NONE:I = 0x0

.field public static final KEYBOARD_TYPE_NON_ALPHABETIC:I = 0x1

.field public static final MOTION_RANGE_ORIENTATION:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_PRESSURE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_SIZE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOOL_MAJOR:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOOL_MINOR:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOUCH_MAJOR:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOUCH_MINOR:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SOURCE_ANY:I = -0x100

.field public static final SOURCE_BLUETOOTH_STYLUS:I = 0xc002

.field public static final SOURCE_CLASS_BUTTON:I = 0x1

.field public static final SOURCE_CLASS_JOYSTICK:I = 0x10

.field public static final SOURCE_CLASS_MASK:I = 0xff

.field public static final SOURCE_CLASS_NONE:I = 0x0

.field public static final SOURCE_CLASS_POINTER:I = 0x2

.field public static final SOURCE_CLASS_POSITION:I = 0x8

.field public static final SOURCE_CLASS_TRACKBALL:I = 0x4

.field public static final SOURCE_CUSTOM:I = 0x8000001

.field public static final SOURCE_DPAD:I = 0x201

.field public static final SOURCE_GAMEPAD:I = 0x401

.field public static final SOURCE_GESTURE_SENSOR:I = 0x800000

.field public static final SOURCE_HDMI:I = 0x2000001

.field public static final SOURCE_JOYSTICK:I = 0x1000010

.field public static final SOURCE_KEYBOARD:I = 0x101

.field public static final SOURCE_MOUSE:I = 0x2002

.field public static final SOURCE_NAVIGATION_BAR:I = 0x4000001

.field public static final SOURCE_ROTARY_ENCODER:I = 0x400000

.field public static final SOURCE_STYLUS:I = 0x4002

.field public static final SOURCE_TOUCHPAD:I = 0x100008

.field public static final SOURCE_TOUCHSCREEN:I = 0x1002

.field public static final SOURCE_TOUCH_NAVIGATION:I = 0x200000

.field public static final SOURCE_TRACKBALL:I = 0x10004

.field public static final SOURCE_UNKNOWN:I


# instance fields
.field private final mControllerNumber:I

.field private final mDescriptor:Ljava/lang/String;

.field private final mGeneration:I

.field private final mHasButtonUnderPad:Z

.field private final mHasMicrophone:Z

.field private final mHasVibrator:Z

.field private final mId:I

.field private final mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

.field private final mIsExternal:Z

.field private final mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private final mKeyboardType:I

.field private final mMotionRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/InputDevice$MotionRange;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mProductId:I

.field private final mSources:I

.field private final mVendorId:I

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 417
    new-instance v0, Landroid/view/InputDevice$1;

    invoke-direct {v0}, Landroid/view/InputDevice$1;-><init>()V

    .line 416
    sput-object v0, Landroid/view/InputDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 45
    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;IILjava/lang/String;ZIILandroid/view/KeyCharacterMap;ZZZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "generation"    # I
    .param p3, "controllerNumber"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "vendorId"    # I
    .param p6, "productId"    # I
    .param p7, "descriptor"    # Ljava/lang/String;
    .param p8, "isExternal"    # Z
    .param p9, "sources"    # I
    .param p10, "keyboardType"    # I
    .param p11, "keyCharacterMap"    # Landroid/view/KeyCharacterMap;
    .param p12, "hasVibrator"    # Z
    .param p13, "hasMicrophone"    # Z
    .param p14, "hasButtonUnderPad"    # Z

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    .line 431
    iput p1, p0, Landroid/view/InputDevice;->mId:I

    .line 432
    iput p2, p0, Landroid/view/InputDevice;->mGeneration:I

    .line 433
    iput p3, p0, Landroid/view/InputDevice;->mControllerNumber:I

    .line 434
    iput-object p4, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    .line 435
    iput p5, p0, Landroid/view/InputDevice;->mVendorId:I

    .line 436
    iput p6, p0, Landroid/view/InputDevice;->mProductId:I

    .line 437
    iput-object p7, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    .line 438
    iput-boolean p8, p0, Landroid/view/InputDevice;->mIsExternal:Z

    .line 439
    iput p9, p0, Landroid/view/InputDevice;->mSources:I

    .line 440
    iput p10, p0, Landroid/view/InputDevice;->mKeyboardType:I

    .line 441
    iput-object p11, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 442
    iput-boolean p12, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    .line 443
    iput-boolean p13, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    .line 444
    iput-boolean p14, p0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    .line 445
    new-instance v0, Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {v0, p7, p5, p6}, Landroid/hardware/input/InputDeviceIdentifier;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Landroid/view/InputDevice;->mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 430
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    .line 449
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mId:I

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mGeneration:I

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mControllerNumber:I

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mVendorId:I

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mProductId:I

    .line 455
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/view/InputDevice;->mIsExternal:Z

    .line 457
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mSources:I

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mKeyboardType:I

    .line 459
    sget-object v0, Landroid/view/KeyCharacterMap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyCharacterMap;

    iput-object v0, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v2, p0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    .line 463
    new-instance v0, Landroid/hardware/input/InputDeviceIdentifier;

    iget-object v2, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    iget v3, p0, Landroid/view/InputDevice;->mVendorId:I

    iget v4, p0, Landroid/view/InputDevice;->mProductId:I

    invoke-direct {v0, v2, v3, v4}, Landroid/hardware/input/InputDeviceIdentifier;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Landroid/view/InputDevice;->mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 466
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 467
    .local v1, "axis":I
    if-gez v1, :cond_4

    .line 448
    return-void

    .end local v1    # "axis":I
    :cond_0
    move v0, v3

    .line 456
    goto :goto_0

    :cond_1
    move v0, v3

    .line 460
    goto :goto_1

    :cond_2
    move v0, v3

    .line 461
    goto :goto_2

    :cond_3
    move v2, v3

    .line 462
    goto :goto_3

    .line 470
    .restart local v1    # "axis":I
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    move-object v0, p0

    .line 470
    invoke-direct/range {v0 .. v7}, Landroid/view/InputDevice;->addMotionRange(IIFFFFF)V

    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/InputDevice;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/InputDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private addMotionRange(IIFFFFF)V
    .locals 10
    .param p1, "axis"    # I
    .param p2, "source"    # I
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "flat"    # F
    .param p6, "fuzz"    # F
    .param p7, "resolution"    # F

    .prologue
    .line 762
    iget-object v9, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    new-instance v0, Landroid/view/InputDevice$MotionRange;

    const/4 v8, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/view/InputDevice$MotionRange;-><init>(IIFFFFFLandroid/view/InputDevice$MotionRange;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    return-void
.end method

.method private appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/StringBuilder;
    .param p2, "source"    # I
    .param p3, "sourceName"    # Ljava/lang/String;

    .prologue
    .line 1028
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_0

    .line 1029
    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    :cond_0
    return-void
.end method

.method public static getDevice(I)Landroid/view/InputDevice;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 481
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceIds()[I
    .locals 1

    .prologue
    .line 489
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 969
    const/4 v0, 0x0

    return v0
.end method

.method public getControllerNumber()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Landroid/view/InputDevice;->mControllerNumber:I

    return v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getGeneration()I
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Landroid/view/InputDevice;->mGeneration:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Landroid/view/InputDevice;->mId:I

    return v0
.end method

.method public getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Landroid/view/InputDevice;->mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    return-object v0
.end method

.method public getKeyCharacterMap()Landroid/view/KeyCharacterMap;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    return-object v0
.end method

.method public getKeyboardType()I
    .locals 1

    .prologue
    .line 678
    iget v0, p0, Landroid/view/InputDevice;->mKeyboardType:I

    return v0
.end method

.method public getMotionRange(I)Landroid/view/InputDevice$MotionRange;
    .locals 4
    .param p1, "axis"    # I

    .prologue
    .line 714
    iget-object v3, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 715
    .local v1, "numRanges":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 716
    iget-object v3, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice$MotionRange;

    .line 717
    .local v2, "range":Landroid/view/InputDevice$MotionRange;
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-get0(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 718
    return-object v2

    .line 715
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 721
    .end local v2    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getMotionRange(II)Landroid/view/InputDevice$MotionRange;
    .locals 4
    .param p1, "axis"    # I
    .param p2, "source"    # I

    .prologue
    .line 739
    iget-object v3, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 740
    .local v1, "numRanges":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 741
    iget-object v3, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice$MotionRange;

    .line 742
    .local v2, "range":Landroid/view/InputDevice$MotionRange;
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-get0(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-get6(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 743
    return-object v2

    .line 740
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 746
    .end local v2    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getMotionRanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/InputDevice$MotionRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 756
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()I
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Landroid/view/InputDevice;->mProductId:I

    return v0
.end method

.method public getSources()I
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    return v0
.end method

.method public getVendorId()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Landroid/view/InputDevice;->mVendorId:I

    return v0
.end method

.method public getVibrator()Landroid/os/Vibrator;
    .locals 3

    .prologue
    .line 778
    iget-object v1, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    monitor-enter v1

    .line 779
    :try_start_0
    iget-object v0, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 780
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    if-eqz v0, :cond_1

    .line 781
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v2, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v0, v2}, Landroid/hardware/input/InputManager;->getInputDeviceVibrator(I)Landroid/os/Vibrator;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    .line 786
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 783
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/NullVibrator;->getInstance()Landroid/os/NullVibrator;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 778
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hasButtonUnderPad()Z
    .locals 1

    .prologue
    .line 804
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    return v0
.end method

.method public varargs hasKeys([I)[Z
    .locals 2
    .param p1, "keys"    # [I

    .prologue
    .line 696
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v0, v1, p1}, Landroid/hardware/input/InputManager;->deviceHasKeys(I[I)[Z

    move-result-object v0

    return-object v0
.end method

.method public hasMicrophone()Z
    .locals 1

    .prologue
    .line 795
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    return v0
.end method

.method public isExternal()Z
    .locals 1

    .prologue
    .line 630
    iget-boolean v0, p0, Landroid/view/InputDevice;->mIsExternal:Z

    return v0
.end method

.method public isFullKeyboard()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 641
    iget v1, p0, Landroid/view/InputDevice;->mSources:I

    and-int/lit16 v1, v1, 0x101

    const/16 v2, 0x101

    if-ne v1, v2, :cond_0

    .line 642
    iget v1, p0, Landroid/view/InputDevice;->mKeyboardType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 641
    :cond_0
    return v0
.end method

.method public isVirtual()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 618
    iget v1, p0, Landroid/view/InputDevice;->mId:I

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setCustomPointerIcon(Landroid/view/PointerIcon;)V
    .locals 1
    .param p1, "icon"    # Landroid/view/PointerIcon;

    .prologue
    .line 822
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    .line 821
    return-void
.end method

.method public setPointerType(I)V
    .locals 1
    .param p1, "pointerType"    # I

    .prologue
    .line 813
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 812
    return-void
.end method

.method public supportsSource(I)Z
    .locals 1
    .param p1, "source"    # I

    .prologue
    .line 670
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 975
    .local v0, "description":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "Input Device "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    const-string/jumbo v4, "  Descriptor: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    const-string/jumbo v4, "  Generation: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/InputDevice;->mGeneration:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    const-string/jumbo v4, "  Location: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v4, p0, Landroid/view/InputDevice;->mIsExternal:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "external"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    const-string/jumbo v4, "  Keyboard Type: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    iget v4, p0, Landroid/view/InputDevice;->mKeyboardType:I

    packed-switch v4, :pswitch_data_0

    .line 992
    :goto_1
    const-string/jumbo v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    const-string/jumbo v4, "  Has Vibrator: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    const-string/jumbo v4, "  Has mic: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    const-string/jumbo v4, "  Sources: 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/InputDevice;->mSources:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    const-string/jumbo v4, "keyboard"

    const/16 v5, 0x101

    invoke-direct {p0, v0, v5, v4}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1000
    const-string/jumbo v4, "dpad"

    const/16 v5, 0x201

    invoke-direct {p0, v0, v5, v4}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1001
    const-string/jumbo v4, "touchscreen"

    const/16 v5, 0x1002

    invoke-direct {p0, v0, v5, v4}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1002
    const-string/jumbo v4, "mouse"

    const/16 v5, 0x2002

    invoke-direct {p0, v0, v5, v4}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1003
    const-string/jumbo v4, "stylus"

    const/16 v5, 0x4002

    invoke-direct {p0, v0, v5, v4}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1004
    const-string/jumbo v4, "trackball"

    const v5, 0x10004

    invoke-direct {p0, v0, v5, v4}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1005
    const-string/jumbo v4, "touchpad"

    const v5, 0x100008

    invoke-direct {p0, v0, v5, v4}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1006
    const-string/jumbo v4, "joystick"

    const v5, 0x1000010

    invoke-direct {p0, v0, v5, v4}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1007
    const-string/jumbo v4, "gamepad"

    const/16 v5, 0x401

    invoke-direct {p0, v0, v5, v4}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1008
    const-string/jumbo v4, "gesture"

    const/high16 v5, 0x800000

    invoke-direct {p0, v0, v5, v4}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1009
    const-string/jumbo v4, " )\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    iget-object v4, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1012
    .local v2, "numAxes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_1

    .line 1013
    iget-object v4, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputDevice$MotionRange;

    .line 1014
    .local v3, "range":Landroid/view/InputDevice$MotionRange;
    const-string/jumbo v4, "    "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->-get0(Landroid/view/InputDevice$MotionRange;)I

    move-result v5

    invoke-static {v5}, Landroid/view/MotionEvent;->axisToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    const-string/jumbo v4, ": source=0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->-get6(Landroid/view/InputDevice$MotionRange;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    const-string/jumbo v4, " min="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->-get4(Landroid/view/InputDevice$MotionRange;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1017
    const-string/jumbo v4, " max="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->-get3(Landroid/view/InputDevice$MotionRange;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1018
    const-string/jumbo v4, " flat="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->-get1(Landroid/view/InputDevice$MotionRange;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1019
    const-string/jumbo v4, " fuzz="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->-get2(Landroid/view/InputDevice$MotionRange;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1020
    const-string/jumbo v4, " resolution="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->-get5(Landroid/view/InputDevice$MotionRange;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1021
    const-string/jumbo v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 978
    .end local v1    # "i":I
    .end local v2    # "numAxes":I
    .end local v3    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_0
    const-string/jumbo v4, "built-in"

    goto/16 :goto_0

    .line 983
    :pswitch_0
    const-string/jumbo v4, "none"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 986
    :pswitch_1
    const-string/jumbo v4, "non-alphabetic"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 989
    :pswitch_2
    const-string/jumbo v4, "alphabetic"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1023
    .restart local v1    # "i":I
    .restart local v2    # "numAxes":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 981
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 938
    iget v3, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 939
    iget v3, p0, Landroid/view/InputDevice;->mGeneration:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 940
    iget v3, p0, Landroid/view/InputDevice;->mControllerNumber:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 941
    iget-object v3, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 942
    iget v3, p0, Landroid/view/InputDevice;->mVendorId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 943
    iget v3, p0, Landroid/view/InputDevice;->mProductId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 944
    iget-object v3, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 945
    iget-boolean v3, p0, Landroid/view/InputDevice;->mIsExternal:Z

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 946
    iget v3, p0, Landroid/view/InputDevice;->mSources:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 947
    iget v3, p0, Landroid/view/InputDevice;->mKeyboardType:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 948
    iget-object v3, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v3, p1, p2}, Landroid/view/KeyCharacterMap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 949
    iget-boolean v3, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 950
    iget-boolean v3, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    if-eqz v3, :cond_2

    move v3, v4

    :goto_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    iget-boolean v3, p0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 953
    iget-object v3, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 954
    .local v1, "numRanges":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v1, :cond_4

    .line 955
    iget-object v3, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice$MotionRange;

    .line 956
    .local v2, "range":Landroid/view/InputDevice$MotionRange;
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-get0(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 957
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-get6(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 958
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-get4(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 959
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-get3(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 960
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-get1(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 961
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-get2(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 962
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-get5(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 954
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v0    # "i":I
    .end local v1    # "numRanges":I
    .end local v2    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_0
    move v3, v5

    .line 945
    goto :goto_0

    :cond_1
    move v3, v5

    .line 949
    goto :goto_1

    :cond_2
    move v3, v5

    .line 950
    goto :goto_2

    :cond_3
    move v4, v5

    .line 951
    goto :goto_3

    .line 964
    .restart local v0    # "i":I
    .restart local v1    # "numRanges":I
    :cond_4
    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 937
    return-void
.end method
