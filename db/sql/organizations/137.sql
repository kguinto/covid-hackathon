
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
      'Family Health Center of San Diego ',
      '4094 Fourth Avenue
San Diego, CA 92103',
      'San Diego',
      'CA',
      '',
      'No',
      '32.7517207',
      '-117.1619983'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Health Center of San Diego '
        AND o.latitude = '32.7517207'
        AND o.longitude = '-117.1619983'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Health Center of San Diego '
        AND o.latitude = '32.7517207'
        AND o.longitude = '-117.1619983'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Health Center of San Diego '
        AND o.latitude = '32.7517207'
        AND o.longitude = '-117.1619983'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Health Center of San Diego '
        AND o.latitude = '32.7517207'
        AND o.longitude = '-117.1619983'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Health Center of San Diego '
        AND o.latitude = '32.7517207'
        AND o.longitude = '-117.1619983'));

COMMIT;
