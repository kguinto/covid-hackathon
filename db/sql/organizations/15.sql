
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
      'Dominican Hospital',
      '1555 Soquel Dr 
Santa Cruz, CA 95065',
      'Santa Cruz',
      'CA',
      'Drop off with waiting room receptionist',
      'Unknown',
      '36.989473',
      '-121.9844119'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dominican Hospital'
        AND o.latitude = '36.989473'
        AND o.longitude = '-121.9844119'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical Masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dominican Hospital'
        AND o.latitude = '36.989473'
        AND o.longitude = '-121.9844119'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face Shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dominican Hospital'
        AND o.latitude = '36.989473'
        AND o.longitude = '-121.9844119'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Unsure about non-mask items',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dominican Hospital'
        AND o.latitude = '36.989473'
        AND o.longitude = '-121.9844119'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('bring them just in case?',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dominican Hospital'
        AND o.latitude = '36.989473'
        AND o.longitude = '-121.9844119'));

COMMIT;
