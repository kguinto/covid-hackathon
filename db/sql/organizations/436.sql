
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
      'Pam Rehabilitation Hospital',
      '351 Seton Pkwy
Round Rock, TX 78665',
      'Round Rock',
      'TX',
      'Unsure',
      'Unsure',
      '30.563719',
      '-97.6498552'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Unsure',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pam Rehabilitation Hospital'
        AND o.latitude = '30.563719'
        AND o.longitude = '-97.6498552'));

COMMIT;
