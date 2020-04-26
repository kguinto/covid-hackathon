
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
      'United Methodist Communities',
      '3311 State Route 33
Neptune City, NJ 07753',
      'Neptune',
      'NJ',
      '',
      'open box as long as the items are secured in a plastic wrap that has not been opened',
      '40.2089208',
      '-74.0701811'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'United Methodist Communities'
        AND o.latitude = '40.2089208'
        AND o.longitude = '-74.0701811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'United Methodist Communities'
        AND o.latitude = '40.2089208'
        AND o.longitude = '-74.0701811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'United Methodist Communities'
        AND o.latitude = '40.2089208'
        AND o.longitude = '-74.0701811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'United Methodist Communities'
        AND o.latitude = '40.2089208'
        AND o.longitude = '-74.0701811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'United Methodist Communities'
        AND o.latitude = '40.2089208'
        AND o.longitude = '-74.0701811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'United Methodist Communities'
        AND o.latitude = '40.2089208'
        AND o.longitude = '-74.0701811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'United Methodist Communities'
        AND o.latitude = '40.2089208'
        AND o.longitude = '-74.0701811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'United Methodist Communities'
        AND o.latitude = '40.2089208'
        AND o.longitude = '-74.0701811'));

COMMIT;
