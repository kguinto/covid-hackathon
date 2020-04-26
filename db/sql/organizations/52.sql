
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
      'Memorial Sloan Kettering Cancer Center',
      '1275 York Ave
New York, NY 10065',
      'New York - Manhattan',
      'NY',
      'Please contact Larisa Storozhenko at storozhl@mskcc.org or 516-330-6123',
      'Unknown',
      '40.7663474',
      '-73.95635'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Sloan Kettering Cancer Center'
        AND o.latitude = '40.7663474'
        AND o.longitude = '-73.95635'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Sloan Kettering Cancer Center'
        AND o.latitude = '40.7663474'
        AND o.longitude = '-73.95635'));

COMMIT;
