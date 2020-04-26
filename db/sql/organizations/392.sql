
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
      'St. Joseph Mercy Brighton Health Center ',
      '7575 Grand River Ave
Brighton, MI 48114',
      'Brighton',
      'MI',
      'Please drop off or mail to the following address 7575 Grand River Ave, Brighton, MI 48114',
      'Please keep boxes/bags closed for sanitary purposes. We will accept any donation.',
      '42.5679883',
      '-83.8027953'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Mercy Brighton Health Center '
        AND o.latitude = '42.5679883'
        AND o.longitude = '-83.8027953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Mercy Brighton Health Center '
        AND o.latitude = '42.5679883'
        AND o.longitude = '-83.8027953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Mercy Brighton Health Center '
        AND o.latitude = '42.5679883'
        AND o.longitude = '-83.8027953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Mercy Brighton Health Center '
        AND o.latitude = '42.5679883'
        AND o.longitude = '-83.8027953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Mercy Brighton Health Center '
        AND o.latitude = '42.5679883'
        AND o.longitude = '-83.8027953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Mercy Brighton Health Center '
        AND o.latitude = '42.5679883'
        AND o.longitude = '-83.8027953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Mercy Brighton Health Center '
        AND o.latitude = '42.5679883'
        AND o.longitude = '-83.8027953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Mercy Brighton Health Center '
        AND o.latitude = '42.5679883'
        AND o.longitude = '-83.8027953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Mercy Brighton Health Center '
        AND o.latitude = '42.5679883'
        AND o.longitude = '-83.8027953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Mercy Brighton Health Center '
        AND o.latitude = '42.5679883'
        AND o.longitude = '-83.8027953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Ventilators',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Mercy Brighton Health Center '
        AND o.latitude = '42.5679883'
        AND o.longitude = '-83.8027953'));

COMMIT;
