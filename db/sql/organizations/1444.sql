
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
      'Bryan Fire Department',
      '414 Lawrence St
Bryan, TX 77801',
      'Bryan',
      'TX',
      'In front of bay door by flag pole',
      'Yes',
      '30.6462335',
      '-96.3585795'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bryan Fire Department'
        AND o.latitude = '30.6462335'
        AND o.longitude = '-96.3585795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bryan Fire Department'
        AND o.latitude = '30.6462335'
        AND o.longitude = '-96.3585795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bryan Fire Department'
        AND o.latitude = '30.6462335'
        AND o.longitude = '-96.3585795'));

COMMIT;
