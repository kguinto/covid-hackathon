
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
      'Bay Cove Human Services',
      '66 Canal St
Boston, MA 02114',
      'Boston',
      'MA',
      'Call Stacy at 802-274-1771. Drop off at location.',
      'Yes',
      '42.3636637',
      '-71.059666'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bay Cove Human Services'
        AND o.latitude = '42.3636637'
        AND o.longitude = '-71.059666'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bay Cove Human Services'
        AND o.latitude = '42.3636637'
        AND o.longitude = '-71.059666'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bay Cove Human Services'
        AND o.latitude = '42.3636637'
        AND o.longitude = '-71.059666'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bay Cove Human Services'
        AND o.latitude = '42.3636637'
        AND o.longitude = '-71.059666'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bay Cove Human Services'
        AND o.latitude = '42.3636637'
        AND o.longitude = '-71.059666'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('infrared thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bay Cove Human Services'
        AND o.latitude = '42.3636637'
        AND o.longitude = '-71.059666'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bay Cove Human Services'
        AND o.latitude = '42.3636637'
        AND o.longitude = '-71.059666'));

COMMIT;
