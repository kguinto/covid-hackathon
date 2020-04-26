
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
      'Elevate, Inc.',
      'N169 W21005 Meadow Ln
Jackson, WI 53037',
      'Jackson',
      'WI',
      'Please call ahead before dropping off - 262-677-2216',
      'Yes',
      '43.3253471',
      '-88.1691475'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Elevate, Inc.'
        AND o.latitude = '43.3253471'
        AND o.longitude = '-88.1691475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Elevate, Inc.'
        AND o.latitude = '43.3253471'
        AND o.longitude = '-88.1691475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Elevate, Inc.'
        AND o.latitude = '43.3253471'
        AND o.longitude = '-88.1691475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Elevate, Inc.'
        AND o.latitude = '43.3253471'
        AND o.longitude = '-88.1691475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Elevate, Inc.'
        AND o.latitude = '43.3253471'
        AND o.longitude = '-88.1691475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Elevate, Inc.'
        AND o.latitude = '43.3253471'
        AND o.longitude = '-88.1691475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Handmade masks - please follow pattern (https://www.froedtert.com/sites/default/files/files/2020-03/MaskInstructions_V2.pdf)',
    (SELECT id FROM organizations o
      WHERE o.name = 'Elevate, Inc.'
        AND o.latitude = '43.3253471'
        AND o.longitude = '-88.1691475'));

COMMIT;
