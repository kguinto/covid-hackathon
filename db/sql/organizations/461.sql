
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
      'SBH Health Syste­­­­m',
      '4422 3rd Ave
The Bronx, NY 10457',
      'New York - Bronx',
      'NY',
      'Delivery or pick up',
      '',
      '40.853914',
      '-73.8903914'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'SBH Health Syste­­­­m'
        AND o.latitude = '40.853914'
        AND o.longitude = '-73.8903914'));

COMMIT;
