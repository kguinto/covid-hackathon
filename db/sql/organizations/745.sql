
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
      'Hartford Healthcare GoHealth Urgent Care ',
      '385 W Main St.
Avon, CT 06001',
      'Avon',
      'CT',
      'Can pick up or accept delivery at location (more details needed)',
      'Unsure',
      '41.815292',
      '-72.8641943'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hartford Healthcare GoHealth Urgent Care '
        AND o.latitude = '41.815292'
        AND o.longitude = '-72.8641943'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hartford Healthcare GoHealth Urgent Care '
        AND o.latitude = '41.815292'
        AND o.longitude = '-72.8641943'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hartford Healthcare GoHealth Urgent Care '
        AND o.latitude = '41.815292'
        AND o.longitude = '-72.8641943'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hartford Healthcare GoHealth Urgent Care '
        AND o.latitude = '41.815292'
        AND o.longitude = '-72.8641943'));

COMMIT;
