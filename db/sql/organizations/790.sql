
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
      'Baptist Jacksonville',
      '800 Prudential Drive
Jacksonville, FL 32207',
      'Jacksonville',
      'FL',
      '',
      'Yes',
      '30.315687',
      '-81.6637016'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baptist Jacksonville'
        AND o.latitude = '30.315687'
        AND o.longitude = '-81.6637016'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baptist Jacksonville'
        AND o.latitude = '30.315687'
        AND o.longitude = '-81.6637016'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baptist Jacksonville'
        AND o.latitude = '30.315687'
        AND o.longitude = '-81.6637016'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baptist Jacksonville'
        AND o.latitude = '30.315687'
        AND o.longitude = '-81.6637016'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baptist Jacksonville'
        AND o.latitude = '30.315687'
        AND o.longitude = '-81.6637016'));

COMMIT;
