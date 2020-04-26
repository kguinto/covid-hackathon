
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
      'Ear, Nose, & Throat Clinics of Oahu',
      '98-1079 Moanalua Rd, #660
Aiea, HI 96701',
      'Aiea',
      'HI',
      'Aiea',
      'Yes',
      '21.3835987',
      '-157.9382973'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ear, Nose, & Throat Clinics of Oahu'
        AND o.latitude = '21.3835987'
        AND o.longitude = '-157.9382973'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ear, Nose, & Throat Clinics of Oahu'
        AND o.latitude = '21.3835987'
        AND o.longitude = '-157.9382973'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ear, Nose, & Throat Clinics of Oahu'
        AND o.latitude = '21.3835987'
        AND o.longitude = '-157.9382973'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ear, Nose, & Throat Clinics of Oahu'
        AND o.latitude = '21.3835987'
        AND o.longitude = '-157.9382973'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ear, Nose, & Throat Clinics of Oahu'
        AND o.latitude = '21.3835987'
        AND o.longitude = '-157.9382973'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ear, Nose, & Throat Clinics of Oahu'
        AND o.latitude = '21.3835987'
        AND o.longitude = '-157.9382973'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ear, Nose, & Throat Clinics of Oahu'
        AND o.latitude = '21.3835987'
        AND o.longitude = '-157.9382973'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ear, Nose, & Throat Clinics of Oahu'
        AND o.latitude = '21.3835987'
        AND o.longitude = '-157.9382973'));

COMMIT;
