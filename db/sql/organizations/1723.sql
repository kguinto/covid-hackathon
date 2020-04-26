
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
      'Davidson County Jails',
      '5131 Harding Pl
Nashville, TN 37211',
      'Nashville',
      'TN',
      '5113 Harding Place, Nashville, 37211',
      'Yes',
      '36.0901425',
      '-86.6876946'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Davidson County Jails'
        AND o.latitude = '36.0901425'
        AND o.longitude = '-86.6876946'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Davidson County Jails'
        AND o.latitude = '36.0901425'
        AND o.longitude = '-86.6876946'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Davidson County Jails'
        AND o.latitude = '36.0901425'
        AND o.longitude = '-86.6876946'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Davidson County Jails'
        AND o.latitude = '36.0901425'
        AND o.longitude = '-86.6876946'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Davidson County Jails'
        AND o.latitude = '36.0901425'
        AND o.longitude = '-86.6876946'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Davidson County Jails'
        AND o.latitude = '36.0901425'
        AND o.longitude = '-86.6876946'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Davidson County Jails'
        AND o.latitude = '36.0901425'
        AND o.longitude = '-86.6876946'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Davidson County Jails'
        AND o.latitude = '36.0901425'
        AND o.longitude = '-86.6876946'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Davidson County Jails'
        AND o.latitude = '36.0901425'
        AND o.longitude = '-86.6876946'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Davidson County Jails'
        AND o.latitude = '36.0901425'
        AND o.longitude = '-86.6876946'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Appreciate anything',
    (SELECT id FROM organizations o
      WHERE o.name = 'Davidson County Jails'
        AND o.latitude = '36.0901425'
        AND o.longitude = '-86.6876946'));

COMMIT;
