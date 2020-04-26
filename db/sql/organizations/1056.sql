
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
      'HCR Homecare',
      '85 Metro Park
Rochester, NY 14623',
      'Rochester',
      'NY',
      'ATTN: Jessica Northrup',
      'Yes',
      '43.0970998',
      '-77.6168279'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'HCR Homecare'
        AND o.latitude = '43.0970998'
        AND o.longitude = '-77.6168279'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'HCR Homecare'
        AND o.latitude = '43.0970998'
        AND o.longitude = '-77.6168279'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'HCR Homecare'
        AND o.latitude = '43.0970998'
        AND o.longitude = '-77.6168279'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'HCR Homecare'
        AND o.latitude = '43.0970998'
        AND o.longitude = '-77.6168279'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'HCR Homecare'
        AND o.latitude = '43.0970998'
        AND o.longitude = '-77.6168279'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'HCR Homecare'
        AND o.latitude = '43.0970998'
        AND o.longitude = '-77.6168279'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Words of encouragement!',
    (SELECT id FROM organizations o
      WHERE o.name = 'HCR Homecare'
        AND o.latitude = '43.0970998'
        AND o.longitude = '-77.6168279'));

COMMIT;
