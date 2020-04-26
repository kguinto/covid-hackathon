
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
      'Bronson Battle Creek Hospital',
      '363 Fremont St
Battle Creek, MI 49017',
      'Battle Creek',
      'MI',
      '',
      'No',
      '42.3309466',
      '-85.1782306'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bronson Battle Creek Hospital'
        AND o.latitude = '42.3309466'
        AND o.longitude = '-85.1782306'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bronson Battle Creek Hospital'
        AND o.latitude = '42.3309466'
        AND o.longitude = '-85.1782306'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bronson Battle Creek Hospital'
        AND o.latitude = '42.3309466'
        AND o.longitude = '-85.1782306'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bronson Battle Creek Hospital'
        AND o.latitude = '42.3309466'
        AND o.longitude = '-85.1782306'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bronson Battle Creek Hospital'
        AND o.latitude = '42.3309466'
        AND o.longitude = '-85.1782306'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bronson Battle Creek Hospital'
        AND o.latitude = '42.3309466'
        AND o.longitude = '-85.1782306'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bronson Battle Creek Hospital'
        AND o.latitude = '42.3309466'
        AND o.longitude = '-85.1782306'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bronson Battle Creek Hospital'
        AND o.latitude = '42.3309466'
        AND o.longitude = '-85.1782306'));

COMMIT;
