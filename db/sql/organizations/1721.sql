
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
      'Escondido Post Acute Rehab',
      '421 E Mission Ave
Escondido, CA 92025',
      'Escondido',
      'CA',
      'Call and drop off at entrance. Doors remain locked during open hours.',
      'Unsure ',
      '33.1309957',
      '-117.0803736'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Escondido Post Acute Rehab'
        AND o.latitude = '33.1309957'
        AND o.longitude = '-117.0803736'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Escondido Post Acute Rehab'
        AND o.latitude = '33.1309957'
        AND o.longitude = '-117.0803736'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Escondido Post Acute Rehab'
        AND o.latitude = '33.1309957'
        AND o.longitude = '-117.0803736'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Escondido Post Acute Rehab'
        AND o.latitude = '33.1309957'
        AND o.longitude = '-117.0803736'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Escondido Post Acute Rehab'
        AND o.latitude = '33.1309957'
        AND o.longitude = '-117.0803736'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Escondido Post Acute Rehab'
        AND o.latitude = '33.1309957'
        AND o.longitude = '-117.0803736'));

COMMIT;
