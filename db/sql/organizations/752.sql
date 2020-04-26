
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
      'AMITA Resurrection',
      '7435 W. Talcott Avenue
Chicago, IL  60631',
      'Chicago',
      'IL',
      'Please Contact Patricia Sotos (Patricia.Sotos@amitahealth.org) to arrange delivery and dropoff. If mailing, please write on the box: Attn:  Main Security/COVID PPE Community Donations. ',
      'Not Sure',
      '41.9876791',
      '-87.8142891'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'AMITA Resurrection'
        AND o.latitude = '41.9876791'
        AND o.longitude = '-87.8142891'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'AMITA Resurrection'
        AND o.latitude = '41.9876791'
        AND o.longitude = '-87.8142891'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'AMITA Resurrection'
        AND o.latitude = '41.9876791'
        AND o.longitude = '-87.8142891'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'AMITA Resurrection'
        AND o.latitude = '41.9876791'
        AND o.longitude = '-87.8142891'));

COMMIT;
