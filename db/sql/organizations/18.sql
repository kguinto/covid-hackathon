
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
      'Northwest Kidney Centers',
      '1903 South 128th Street
SeaTac, WA 98168',
      'SeaTac',
      'WA',
      'Drop off at the Logistics Center, 1903 S. 128th between 7am-3pm Monday through Friday. Ring the doorbell at the pedestrian entrance or loading dock. Call 253-905-4574 with questions. ',
      'No',
      '47.488616',
      '-122.3080552'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northwest Kidney Centers'
        AND o.latitude = '47.488616'
        AND o.longitude = '-122.3080552'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves (Vinyl or Nitrile)',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northwest Kidney Centers'
        AND o.latitude = '47.488616'
        AND o.longitude = '-122.3080552'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Liquid Hand Sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northwest Kidney Centers'
        AND o.latitude = '47.488616'
        AND o.longitude = '-122.3080552'));

COMMIT;
