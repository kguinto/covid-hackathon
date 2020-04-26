
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
      'Bryan Medical Center ',
      '2300 S 16th St
Lincoln, NE 68502',
      'Lincoln',
      'NE',
      'Curbside (business hours) or Visitor Check-in Station (after hours/weekends)',
      'Yes',
      '40.7894293',
      '-96.6980919'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bryan Medical Center '
        AND o.latitude = '40.7894293'
        AND o.longitude = '-96.6980919'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bryan Medical Center '
        AND o.latitude = '40.7894293'
        AND o.longitude = '-96.6980919'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bryan Medical Center '
        AND o.latitude = '40.7894293'
        AND o.longitude = '-96.6980919'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bryan Medical Center '
        AND o.latitude = '40.7894293'
        AND o.longitude = '-96.6980919'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bryan Medical Center '
        AND o.latitude = '40.7894293'
        AND o.longitude = '-96.6980919'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bryan Medical Center '
        AND o.latitude = '40.7894293'
        AND o.longitude = '-96.6980919'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bryan Medical Center '
        AND o.latitude = '40.7894293'
        AND o.longitude = '-96.6980919'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bryan Medical Center '
        AND o.latitude = '40.7894293'
        AND o.longitude = '-96.6980919'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bryan Medical Center '
        AND o.latitude = '40.7894293'
        AND o.longitude = '-96.6980919'));

COMMIT;
