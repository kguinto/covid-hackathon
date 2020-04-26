
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
      'New York Presbyterian- Morgan Stanley Children''s Hospital',
      '3959 Broadway
New York, NY 10032',
      'New York - Manhattan',
      'NY',
      'ATTN: 8 Central PCU 
Christian Madrazo',
      'Yes',
      '40.8398048',
      '-73.9414011'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Presbyterian- Morgan Stanley Children''s Hospital'
        AND o.latitude = '40.8398048'
        AND o.longitude = '-73.9414011'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Presbyterian- Morgan Stanley Children''s Hospital'
        AND o.latitude = '40.8398048'
        AND o.longitude = '-73.9414011'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Presbyterian- Morgan Stanley Children''s Hospital'
        AND o.latitude = '40.8398048'
        AND o.longitude = '-73.9414011'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical Scrubs',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Presbyterian- Morgan Stanley Children''s Hospital'
        AND o.latitude = '40.8398048'
        AND o.longitude = '-73.9414011'));

COMMIT;
