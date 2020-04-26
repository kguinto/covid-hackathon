
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
      'StatMD',
      '2090 Jericho Turnpike
New Hyde Park, NY 11040',
      'New Hyde Park',
      'NY',
      '',
      'unsure',
      '40.7364347',
      '-73.6717116'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'StatMD'
        AND o.latitude = '40.7364347'
        AND o.longitude = '-73.6717116'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'StatMD'
        AND o.latitude = '40.7364347'
        AND o.longitude = '-73.6717116'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'StatMD'
        AND o.latitude = '40.7364347'
        AND o.longitude = '-73.6717116'));

COMMIT;
