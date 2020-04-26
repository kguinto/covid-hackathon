
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
      'Kaiser Permanente - Fremont ER',
      '39400 Paseo Padre Pkwy
Fremont, CA 94538',
      'Fremont',
      'CA',
      'Please drop off to emergency room receptionist. Command Center: 510-248-5617',
      'Yes',
      '37.5521961',
      '-121.9747793'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Fremont ER'
        AND o.latitude = '37.5521961'
        AND o.longitude = '-121.9747793'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Fremont ER'
        AND o.latitude = '37.5521961'
        AND o.longitude = '-121.9747793'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Fremont ER'
        AND o.latitude = '37.5521961'
        AND o.longitude = '-121.9747793'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Fremont ER'
        AND o.latitude = '37.5521961'
        AND o.longitude = '-121.9747793'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Fremont ER'
        AND o.latitude = '37.5521961'
        AND o.longitude = '-121.9747793'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Fremont ER'
        AND o.latitude = '37.5521961'
        AND o.longitude = '-121.9747793'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Fremont ER'
        AND o.latitude = '37.5521961'
        AND o.longitude = '-121.9747793'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Fremont ER'
        AND o.latitude = '37.5521961'
        AND o.longitude = '-121.9747793'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Fremont ER'
        AND o.latitude = '37.5521961'
        AND o.longitude = '-121.9747793'));

COMMIT;
