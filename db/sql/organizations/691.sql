
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
      'AFC Urgent Care Farmingdale',
      '1037 Fulton Street
Farmingdale, NY 11735',
      'Farmingdale',
      'NY',
      'feel free to walk in or drop it off in front of our door!',
      'No',
      '40.7247755',
      '-73.4303137'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'AFC Urgent Care Farmingdale'
        AND o.latitude = '40.7247755'
        AND o.longitude = '-73.4303137'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'AFC Urgent Care Farmingdale'
        AND o.latitude = '40.7247755'
        AND o.longitude = '-73.4303137'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'AFC Urgent Care Farmingdale'
        AND o.latitude = '40.7247755'
        AND o.longitude = '-73.4303137'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'AFC Urgent Care Farmingdale'
        AND o.latitude = '40.7247755'
        AND o.longitude = '-73.4303137'));

COMMIT;
