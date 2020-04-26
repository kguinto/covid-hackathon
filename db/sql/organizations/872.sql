
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
      'GW Operational Medicine',
      '2120 L St NW
Washington, DC 20037',
      'Washington',
      'DC',
      'ATTN: Alex Cullen',
      'Open boxes, sealed items.',
      '38.9034801',
      '-77.0475413'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'GW Operational Medicine'
        AND o.latitude = '38.9034801'
        AND o.longitude = '-77.0475413'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'GW Operational Medicine'
        AND o.latitude = '38.9034801'
        AND o.longitude = '-77.0475413'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'GW Operational Medicine'
        AND o.latitude = '38.9034801'
        AND o.longitude = '-77.0475413'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'GW Operational Medicine'
        AND o.latitude = '38.9034801'
        AND o.longitude = '-77.0475413'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'GW Operational Medicine'
        AND o.latitude = '38.9034801'
        AND o.longitude = '-77.0475413'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'GW Operational Medicine'
        AND o.latitude = '38.9034801'
        AND o.longitude = '-77.0475413'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'GW Operational Medicine'
        AND o.latitude = '38.9034801'
        AND o.longitude = '-77.0475413'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'GW Operational Medicine'
        AND o.latitude = '38.9034801'
        AND o.longitude = '-77.0475413'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'GW Operational Medicine'
        AND o.latitude = '38.9034801'
        AND o.longitude = '-77.0475413'));

COMMIT;
