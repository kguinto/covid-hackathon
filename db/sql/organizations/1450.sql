
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
      'Grady Hospital',
      '49 Jesse Hill Jr Dr SE
Atlanta, GA 30303',
      'Atlanta',
      'GA',
      'Drop off from 7A-7P, please call building security in advance at (404-557-8106)

Pickup available for large orders, email for more information: ATLStudentCOVIDResponse@gmail.com

Mailing address ATTN:
Personal Protective Equipment
Emory Dean''s Office Room 102',
      'Yes',
      '33.7531159',
      '-84.382008'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grady Hospital'
        AND o.latitude = '33.7531159'
        AND o.longitude = '-84.382008'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grady Hospital'
        AND o.latitude = '33.7531159'
        AND o.longitude = '-84.382008'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grady Hospital'
        AND o.latitude = '33.7531159'
        AND o.longitude = '-84.382008'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grady Hospital'
        AND o.latitude = '33.7531159'
        AND o.longitude = '-84.382008'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grady Hospital'
        AND o.latitude = '33.7531159'
        AND o.longitude = '-84.382008'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grady Hospital'
        AND o.latitude = '33.7531159'
        AND o.longitude = '-84.382008'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grady Hospital'
        AND o.latitude = '33.7531159'
        AND o.longitude = '-84.382008'));

COMMIT;
