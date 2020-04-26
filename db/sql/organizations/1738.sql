
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Secure Donation Drop of site at John A. Burns School of Medicine',
      '651 Ilalo St
Honolulu, HI 96813',
      'Honolulu',
      'HI',
      'Upon arrival, please notify security that you have a donation— staff members of the Dean''s office will receive the donations. Please do not leave any donations at the security desk. Donations will be accepted Monday-Friday 8am-4pm. ',
      'Yes',
      '21.2964863',
      '-157.8637783'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Secure Donation Drop of site at John A. Burns School of Medicine'
        AND o.latitude = '21.2964863'
        AND o.longitude = '-157.8637783'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Secure Donation Drop of site at John A. Burns School of Medicine'
        AND o.latitude = '21.2964863'
        AND o.longitude = '-157.8637783'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Secure Donation Drop of site at John A. Burns School of Medicine'
        AND o.latitude = '21.2964863'
        AND o.longitude = '-157.8637783'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Secure Donation Drop of site at John A. Burns School of Medicine'
        AND o.latitude = '21.2964863'
        AND o.longitude = '-157.8637783'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Secure Donation Drop of site at John A. Burns School of Medicine'
        AND o.latitude = '21.2964863'
        AND o.longitude = '-157.8637783'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Secure Donation Drop of site at John A. Burns School of Medicine'
        AND o.latitude = '21.2964863'
        AND o.longitude = '-157.8637783'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Secure Donation Drop of site at John A. Burns School of Medicine'
        AND o.latitude = '21.2964863'
        AND o.longitude = '-157.8637783'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Secure Donation Drop of site at John A. Burns School of Medicine'
        AND o.latitude = '21.2964863'
        AND o.longitude = '-157.8637783'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Secure Donation Drop of site at John A. Burns School of Medicine'
        AND o.latitude = '21.2964863'
        AND o.longitude = '-157.8637783'));

COMMIT;
