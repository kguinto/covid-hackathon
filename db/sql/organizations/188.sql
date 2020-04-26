
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
      'Bryan Medical Center',
      '1600 S 48th St
Lincoln, NE 68506',
      'Lincoln',
      'NE',
      'Curbside (business hours) or Visitor Check-in Station (after hours/weekends)

or

Email Rachel Greene at Rachel.Greene@bryanhealth.org to coordinate drop off.',
      'Yes',
      '40.7966945',
      '-96.6509997'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bryan Medical Center'
        AND o.latitude = '40.7966945'
        AND o.longitude = '-96.6509997'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bryan Medical Center'
        AND o.latitude = '40.7966945'
        AND o.longitude = '-96.6509997'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bryan Medical Center'
        AND o.latitude = '40.7966945'
        AND o.longitude = '-96.6509997'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bryan Medical Center'
        AND o.latitude = '40.7966945'
        AND o.longitude = '-96.6509997'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bryan Medical Center'
        AND o.latitude = '40.7966945'
        AND o.longitude = '-96.6509997'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bryan Medical Center'
        AND o.latitude = '40.7966945'
        AND o.longitude = '-96.6509997'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bryan Medical Center'
        AND o.latitude = '40.7966945'
        AND o.longitude = '-96.6509997'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bryan Medical Center'
        AND o.latitude = '40.7966945'
        AND o.longitude = '-96.6509997'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bryan Medical Center'
        AND o.latitude = '40.7966945'
        AND o.longitude = '-96.6509997'));

COMMIT;
