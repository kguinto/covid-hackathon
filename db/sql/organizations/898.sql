
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
      'BridgePoint Hospital National Harbor ',
      '4601 Martin Luther King Jr Ave SW
Washington, DC 20032',
      'DC',
      'DC',
      'Nena Bussey',
      'Yes',
      '38.8250714',
      '-77.0132852'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'BridgePoint Hospital National Harbor '
        AND o.latitude = '38.8250714'
        AND o.longitude = '-77.0132852'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'BridgePoint Hospital National Harbor '
        AND o.latitude = '38.8250714'
        AND o.longitude = '-77.0132852'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'BridgePoint Hospital National Harbor '
        AND o.latitude = '38.8250714'
        AND o.longitude = '-77.0132852'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'BridgePoint Hospital National Harbor '
        AND o.latitude = '38.8250714'
        AND o.longitude = '-77.0132852'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'BridgePoint Hospital National Harbor '
        AND o.latitude = '38.8250714'
        AND o.longitude = '-77.0132852'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'BridgePoint Hospital National Harbor '
        AND o.latitude = '38.8250714'
        AND o.longitude = '-77.0132852'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'BridgePoint Hospital National Harbor '
        AND o.latitude = '38.8250714'
        AND o.longitude = '-77.0132852'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'BridgePoint Hospital National Harbor '
        AND o.latitude = '38.8250714'
        AND o.longitude = '-77.0132852'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'BridgePoint Hospital National Harbor '
        AND o.latitude = '38.8250714'
        AND o.longitude = '-77.0132852'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'BridgePoint Hospital National Harbor '
        AND o.latitude = '38.8250714'
        AND o.longitude = '-77.0132852'));

COMMIT;
