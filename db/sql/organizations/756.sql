
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
      'Legacy Health-GoHealth Urgent Care ',
      '2850 SE Powell Valley Rd Ste 100
Gresham, OR 97080',
      'Gresham',
      'OR',
      'Will be able to pick up locally or pay for delivery. ',
      'Unsure',
      '45.4926982',
      '-122.4034142'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Health-GoHealth Urgent Care '
        AND o.latitude = '45.4926982'
        AND o.longitude = '-122.4034142'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Health-GoHealth Urgent Care '
        AND o.latitude = '45.4926982'
        AND o.longitude = '-122.4034142'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Health-GoHealth Urgent Care '
        AND o.latitude = '45.4926982'
        AND o.longitude = '-122.4034142'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Health-GoHealth Urgent Care '
        AND o.latitude = '45.4926982'
        AND o.longitude = '-122.4034142'));

COMMIT;
