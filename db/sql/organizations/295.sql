
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
      'Community Options ',
      '2632 Broadway Suite 101 North
San Antonio, TX 78215',
      'San Antonio',
      'TX',
      'Inside office building 
Attn: Mike Martinez',
      'Yes',
      '29.4512954',
      '-98.473223'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '29.4512954'
        AND o.longitude = '-98.473223'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '29.4512954'
        AND o.longitude = '-98.473223'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '29.4512954'
        AND o.longitude = '-98.473223'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '29.4512954'
        AND o.longitude = '-98.473223'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '29.4512954'
        AND o.longitude = '-98.473223'));

COMMIT;
