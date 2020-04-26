
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
      'Mountain View Retirement Village',
      '7900 N La Cañada Dr
Tucson, AZ 85704',
      'Tucson',
      'AZ',
      'Drop off at front door.  Attention: Tim Nelson Executive Director',
      'Yes',
      '32.3500767',
      '-110.994899'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mountain View Retirement Village'
        AND o.latitude = '32.3500767'
        AND o.longitude = '-110.994899'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mountain View Retirement Village'
        AND o.latitude = '32.3500767'
        AND o.longitude = '-110.994899'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mountain View Retirement Village'
        AND o.latitude = '32.3500767'
        AND o.longitude = '-110.994899'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mountain View Retirement Village'
        AND o.latitude = '32.3500767'
        AND o.longitude = '-110.994899'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mountain View Retirement Village'
        AND o.latitude = '32.3500767'
        AND o.longitude = '-110.994899'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mountain View Retirement Village'
        AND o.latitude = '32.3500767'
        AND o.longitude = '-110.994899'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mountain View Retirement Village'
        AND o.latitude = '32.3500767'
        AND o.longitude = '-110.994899'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Toilet Paper',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mountain View Retirement Village'
        AND o.latitude = '32.3500767'
        AND o.longitude = '-110.994899'));

COMMIT;
