
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
      'New York Presbyterian - Cornell',
      '413 E 69th St
New York, NY 10065',
      'New York - Manhattan',
      'NY',
      'Label "Attn: Mike Murphy | Emergency Supplies for PO | Room 803." Drop off at Belfer Research Building loading dock M-F 9AM-5PM. Ask for Mike Wallace or check security/front desk if garage closed.',
      'No',
      '40.7656072',
      '-73.9561557'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Presbyterian - Cornell'
        AND o.latitude = '40.7656072'
        AND o.longitude = '-73.9561557'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Presbyterian - Cornell'
        AND o.latitude = '40.7656072'
        AND o.longitude = '-73.9561557'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Presbyterian - Cornell'
        AND o.latitude = '40.7656072'
        AND o.longitude = '-73.9561557'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Presbyterian - Cornell'
        AND o.latitude = '40.7656072'
        AND o.longitude = '-73.9561557'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Presbyterian - Cornell'
        AND o.latitude = '40.7656072'
        AND o.longitude = '-73.9561557'));

COMMIT;
