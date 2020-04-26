
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
      'LAC + USC Medical Center ',
      '2051 Marengo St
Los Angeles, CA 90033',
      'Los angeles',
      'CA',
      'GH4628',
      'Yes',
      '34.0596114',
      '-118.2081288'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'LAC + USC Medical Center '
        AND o.latitude = '34.0596114'
        AND o.longitude = '-118.2081288'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'LAC + USC Medical Center '
        AND o.latitude = '34.0596114'
        AND o.longitude = '-118.2081288'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'LAC + USC Medical Center '
        AND o.latitude = '34.0596114'
        AND o.longitude = '-118.2081288'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'LAC + USC Medical Center '
        AND o.latitude = '34.0596114'
        AND o.longitude = '-118.2081288'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'LAC + USC Medical Center '
        AND o.latitude = '34.0596114'
        AND o.longitude = '-118.2081288'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'LAC + USC Medical Center '
        AND o.latitude = '34.0596114'
        AND o.longitude = '-118.2081288'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'LAC + USC Medical Center '
        AND o.latitude = '34.0596114'
        AND o.longitude = '-118.2081288'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'LAC + USC Medical Center '
        AND o.latitude = '34.0596114'
        AND o.longitude = '-118.2081288'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'LAC + USC Medical Center '
        AND o.latitude = '34.0596114'
        AND o.longitude = '-118.2081288'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'LAC + USC Medical Center '
        AND o.latitude = '34.0596114'
        AND o.longitude = '-118.2081288'));

COMMIT;
