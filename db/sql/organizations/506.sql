
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
      'Saint Mary''s Hospital',
      '1300 Massachusetts Ave
Troy, NY 12180',
      'Troy',
      'NY',
      '',
      'Unsure',
      '42.7429592',
      '-73.6761879'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Mary''s Hospital'
        AND o.latitude = '42.7429592'
        AND o.longitude = '-73.6761879'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Mary''s Hospital'
        AND o.latitude = '42.7429592'
        AND o.longitude = '-73.6761879'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Mary''s Hospital'
        AND o.latitude = '42.7429592'
        AND o.longitude = '-73.6761879'));

COMMIT;
