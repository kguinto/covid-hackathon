
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
      'Asante Health System - Grants Pass',
      '500 SW Ramsey Ave
Grants Pass, OR 97527',
      'Grants Pass',
      'OR',
      'Loading dock',
      'Yes',
      '42.4211806',
      '-123.3426466'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System - Grants Pass'
        AND o.latitude = '42.4211806'
        AND o.longitude = '-123.3426466'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System - Grants Pass'
        AND o.latitude = '42.4211806'
        AND o.longitude = '-123.3426466'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System - Grants Pass'
        AND o.latitude = '42.4211806'
        AND o.longitude = '-123.3426466'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System - Grants Pass'
        AND o.latitude = '42.4211806'
        AND o.longitude = '-123.3426466'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System - Grants Pass'
        AND o.latitude = '42.4211806'
        AND o.longitude = '-123.3426466'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System - Grants Pass'
        AND o.latitude = '42.4211806'
        AND o.longitude = '-123.3426466'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System - Grants Pass'
        AND o.latitude = '42.4211806'
        AND o.longitude = '-123.3426466'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System - Grants Pass'
        AND o.latitude = '42.4211806'
        AND o.longitude = '-123.3426466'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System - Grants Pass'
        AND o.latitude = '42.4211806'
        AND o.longitude = '-123.3426466'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System - Grants Pass'
        AND o.latitude = '42.4211806'
        AND o.longitude = '-123.3426466'));

COMMIT;
