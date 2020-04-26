
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
      'Dr. Robert Ezell Southwest Memorial Herman',
      '7777 Southwest Fwy # 328
Houston, TX 77074',
      'Houston',
      'TX',
      'Drop off- Pick Up ...',
      'Unsure',
      '29.693489',
      '-95.5214263'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr. Robert Ezell Southwest Memorial Herman'
        AND o.latitude = '29.693489'
        AND o.longitude = '-95.5214263'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr. Robert Ezell Southwest Memorial Herman'
        AND o.latitude = '29.693489'
        AND o.longitude = '-95.5214263'));

COMMIT;
