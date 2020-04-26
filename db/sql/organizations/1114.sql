
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
      'Rural Health Clinic of Neodesha',
      '709 Main St
Neodesha, KS 66757',
      'Neodesha',
      'KS',
      'May be dropped off or mailed to PO Box 180 Neodesha, KS 66757',
      'Yes',
      '37.4172512',
      '-95.6830643'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rural Health Clinic of Neodesha'
        AND o.latitude = '37.4172512'
        AND o.longitude = '-95.6830643'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rural Health Clinic of Neodesha'
        AND o.latitude = '37.4172512'
        AND o.longitude = '-95.6830643'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rural Health Clinic of Neodesha'
        AND o.latitude = '37.4172512'
        AND o.longitude = '-95.6830643'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rural Health Clinic of Neodesha'
        AND o.latitude = '37.4172512'
        AND o.longitude = '-95.6830643'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rural Health Clinic of Neodesha'
        AND o.latitude = '37.4172512'
        AND o.longitude = '-95.6830643'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rural Health Clinic of Neodesha'
        AND o.latitude = '37.4172512'
        AND o.longitude = '-95.6830643'));

COMMIT;
