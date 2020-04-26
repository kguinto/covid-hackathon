
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
      'St. Francis Hospital, The Heart Center',
      '100 Port Washington Blvd
Roslyn, NY 11576',
      'Roslyn',
      'NY',
      '',
      'Yes',
      '40.804269',
      '-73.6704524'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Francis Hospital, The Heart Center'
        AND o.latitude = '40.804269'
        AND o.longitude = '-73.6704524'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Francis Hospital, The Heart Center'
        AND o.latitude = '40.804269'
        AND o.longitude = '-73.6704524'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Francis Hospital, The Heart Center'
        AND o.latitude = '40.804269'
        AND o.longitude = '-73.6704524'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Francis Hospital, The Heart Center'
        AND o.latitude = '40.804269'
        AND o.longitude = '-73.6704524'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Francis Hospital, The Heart Center'
        AND o.latitude = '40.804269'
        AND o.longitude = '-73.6704524'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Francis Hospital, The Heart Center'
        AND o.latitude = '40.804269'
        AND o.longitude = '-73.6704524'));

COMMIT;
