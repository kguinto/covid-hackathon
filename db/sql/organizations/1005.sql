
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
      'Ben Archer Health Center, attn to : Dr. McCarthy',
      '255 NM-187
Hatch, NM 87937',
      'Hatch',
      'NM',
      'attn to : Dr. McCarthy',
      'Yes',
      '32.6669788',
      '-107.1632686'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ben Archer Health Center, attn to : Dr. McCarthy'
        AND o.latitude = '32.6669788'
        AND o.longitude = '-107.1632686'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ben Archer Health Center, attn to : Dr. McCarthy'
        AND o.latitude = '32.6669788'
        AND o.longitude = '-107.1632686'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ben Archer Health Center, attn to : Dr. McCarthy'
        AND o.latitude = '32.6669788'
        AND o.longitude = '-107.1632686'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ben Archer Health Center, attn to : Dr. McCarthy'
        AND o.latitude = '32.6669788'
        AND o.longitude = '-107.1632686'));

COMMIT;
