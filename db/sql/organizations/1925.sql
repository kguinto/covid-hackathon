
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
      'Kaiser Permanente Ontario ',
      '2295 S Vineyard Ave
Ontario, CA 91761',
      'Ontario',
      'CA',
      'Emergency department please',
      'Yes',
      '34.0320442',
      '-117.6088276'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Ontario '
        AND o.latitude = '34.0320442'
        AND o.longitude = '-117.6088276'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Ontario '
        AND o.latitude = '34.0320442'
        AND o.longitude = '-117.6088276'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Ontario '
        AND o.latitude = '34.0320442'
        AND o.longitude = '-117.6088276'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Ontario '
        AND o.latitude = '34.0320442'
        AND o.longitude = '-117.6088276'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Ontario '
        AND o.latitude = '34.0320442'
        AND o.longitude = '-117.6088276'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Ontario '
        AND o.latitude = '34.0320442'
        AND o.longitude = '-117.6088276'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Ontario '
        AND o.latitude = '34.0320442'
        AND o.longitude = '-117.6088276'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Ontario '
        AND o.latitude = '34.0320442'
        AND o.longitude = '-117.6088276'));

COMMIT;
