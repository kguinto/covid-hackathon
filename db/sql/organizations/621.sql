
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
      'Rush Oak Park Hospital',
      '520 S Maple Ave
Oak Park, IL 60304',
      'Oak Park',
      'IL',
      'Will pick up, will pay for shipping, can receive them at the hospital',
      'Unsure',
      '41.878649',
      '-87.8031698'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rush Oak Park Hospital'
        AND o.latitude = '41.878649'
        AND o.longitude = '-87.8031698'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rush Oak Park Hospital'
        AND o.latitude = '41.878649'
        AND o.longitude = '-87.8031698'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rush Oak Park Hospital'
        AND o.latitude = '41.878649'
        AND o.longitude = '-87.8031698'));

COMMIT;
