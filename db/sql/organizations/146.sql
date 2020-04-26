
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
      'Rhea Medical Center',
      '9400 Rhea County Hwy
Dayton, TN 37321',
      'Dayton',
      'TN',
      'Unused masks only. Mail to Attn: Mark Pollard. Possible to pick it up depending on location. ',
      'Unsure',
      '35.5292587',
      '-84.9818353'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rhea Medical Center'
        AND o.latitude = '35.5292587'
        AND o.longitude = '-84.9818353'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rhea Medical Center'
        AND o.latitude = '35.5292587'
        AND o.longitude = '-84.9818353'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rhea Medical Center'
        AND o.latitude = '35.5292587'
        AND o.longitude = '-84.9818353'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rhea Medical Center'
        AND o.latitude = '35.5292587'
        AND o.longitude = '-84.9818353'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rhea Medical Center'
        AND o.latitude = '35.5292587'
        AND o.longitude = '-84.9818353'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rhea Medical Center'
        AND o.latitude = '35.5292587'
        AND o.longitude = '-84.9818353'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rhea Medical Center'
        AND o.latitude = '35.5292587'
        AND o.longitude = '-84.9818353'));

COMMIT;
