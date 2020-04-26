
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
      'Trillium Family Services, Parry Center for Children',
      '3415 SE Powell Blvd
Portland, OR 97202',
      'Portland',
      'OR',
      'Drop off at main reception building, located just off parking lot. ',
      'Yes',
      '45.4978778',
      '-122.6283887'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trillium Family Services, Parry Center for Children'
        AND o.latitude = '45.4978778'
        AND o.longitude = '-122.6283887'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trillium Family Services, Parry Center for Children'
        AND o.latitude = '45.4978778'
        AND o.longitude = '-122.6283887'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trillium Family Services, Parry Center for Children'
        AND o.latitude = '45.4978778'
        AND o.longitude = '-122.6283887'));

COMMIT;
