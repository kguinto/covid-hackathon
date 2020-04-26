
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
      'Excel Urgent Care of Paramus',
      '110 W Ridgewood Ave
Paramus, NJ 07652',
      'Paramus',
      'NJ',
      '',
      'Yes',
      '40.9709383',
      '-74.0886658'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Paramus'
        AND o.latitude = '40.9709383'
        AND o.longitude = '-74.0886658'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Paramus'
        AND o.latitude = '40.9709383'
        AND o.longitude = '-74.0886658'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Paramus'
        AND o.latitude = '40.9709383'
        AND o.longitude = '-74.0886658'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Paramus'
        AND o.latitude = '40.9709383'
        AND o.longitude = '-74.0886658'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Paramus'
        AND o.latitude = '40.9709383'
        AND o.longitude = '-74.0886658'));

COMMIT;
