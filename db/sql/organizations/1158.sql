
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
      'Home Instead Senior Care ',
      '158 East Ave
Norwalk, CT 06851',
      'Norwalk',
      'CT',
      'Attn: Client Care Manager',
      'Yes',
      '41.1101315',
      '-73.4074921'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home Instead Senior Care '
        AND o.latitude = '41.1101315'
        AND o.longitude = '-73.4074921'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home Instead Senior Care '
        AND o.latitude = '41.1101315'
        AND o.longitude = '-73.4074921'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home Instead Senior Care '
        AND o.latitude = '41.1101315'
        AND o.longitude = '-73.4074921'));

COMMIT;
